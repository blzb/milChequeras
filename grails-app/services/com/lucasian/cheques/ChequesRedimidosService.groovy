package com.lucasian.cheques

import grails.transaction.Transactional
import  groovy.time.TimeCategory

@Transactional
class ChequesRedimidosService {
       def byMinuteForInterval(Date start, Date end) {
              def queryResult = ChequesUsados.executeQuery("select c.dateMinute,count(c) from ChequesUsados c where dateCreated between :inicio and :fin group by c.dateMinute order by c.dateMinute ", [inicio: start, fin: end])                                                       
              completeResult(generateInterval(start, end, GroupBy.Minute), queryResult)
       }

       def byHourForInterval(Date start, Date end) {
              def queryResult = ChequesUsados.executeQuery("select c.dateHour,count(c) from ChequesUsados c where dateCreated between :inicio and :fin group by c.dateHour order by c.dateHour ", [inicio: start, fin: end])                                                       
              completeResult(generateInterval(start, end, GroupBy.Hour), queryResult)
       }
       def byDayForInterval(Date start, Date end) {
              def queryResult = ChequesUsados.executeQuery("select c.dateDay,count(c) from ChequesUsados c where dateCreated between :inicio and :fin group by c.dateDay order by c.dateDay ", [inicio: start, fin: end])                                                       
              completeResult(generateInterval(start, end, GroupBy.Day), queryResult)
       }
       def byWeekInMonthForInterval(Date start, Date end) {
              def queryResult = ChequesUsados.executeQuery("select c.dateWeekInMonth,count(c) from ChequesUsados c where dateCreated between :inicio and :fin group by c.dateWeekInMonth order by c.dateWeekInMonth ", [inicio: start, fin: end])                                                       
              completeResult(generateInterval(start, end, GroupBy.WeekInMonth), queryResult)
       }
       def byMonthForInterval(Date start, Date end) {
              def queryResult = ChequesUsados.executeQuery("select c.dateMonth,count(c) from ChequesUsados c where dateCreated between :inicio and :fin group by c.dateMonth order by c.dateMonth ", [inicio: start, fin: end])                                                       
              completeResult(generateInterval(start, end, GroupBy.Month), queryResult)
       }
       def byYearForInterval(Date start, Date end) {
              def queryResult = ChequesUsados.executeQuery("select c.dateYear,count(c) from ChequesUsados c where dateCreated between :inicio and :fin group by c.dateYear order by c.dateYear ", [inicio: start, fin: end])                                                       
              completeResult(generateInterval(start, end, GroupBy.Year), queryResult)
       }
       def generateInterval(Date start, Date end, GroupBy group){              
              def interval = []
              def value = end
              use(TimeCategory) {
                     while(value>=start){
                            switch(group){
                            case GroupBy.Minute:
                                   interval.push(value.format('yyyy/MM/dd HH:mm'));
                                   value = value-1.minute                           
                                   break;   
                            case GroupBy.Hour:
                                   interval.push(value.format('yyyy/MM/dd HH'));
                                   value = value-1.hour                           
                                   break;   
                            case GroupBy.Day:
                                   interval.push(value.format('yyyy/MM/dd'));
                                   value = value-1.day                           
                                   break;   
                            case GroupBy.WeekInMonth:
                                   interval.push(value.format('yyyy/MM/WW'));
                                   value = value-1.week                           
                                   break;   
                            case GroupBy.Month:
                                   interval.push(value.format('yyyy/MM'));
                                   value = value-1.month                           
                                   break;   
                            case GroupBy.Year:
                                   interval.push(value.format('yyyy'));
                                   value = value-1.year                           
                                   break;   
                            }                           
                     }
              }
              interval
       }
       def completeResult(zeroList, queryList){
              def result = []
              def stamp
              def queryResultPosition = 0              
              while(zeroList.size()>0){   
                     stamp = zeroList.pop()
                     if(queryResultPosition < queryList.size() && queryList[queryResultPosition][0]==stamp){
                            result.push([stamp, queryList[queryResultPosition][1]])
                            queryResultPosition++
                     }else{
                            result.push([stamp, 0])
                     }
              }
              result
       }
       enum GroupBy {
              Hour, Minute, Day, Month,
              Year, WeekInMonth
       }

}
