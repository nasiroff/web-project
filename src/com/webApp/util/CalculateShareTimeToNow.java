package com.webApp.util;

import java.time.*;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

public class CalculateShareTimeToNow {
    public static String timeDiff(LocalDateTime shareTime){
        LocalDateTime time = LocalDateTime.now();
//        ZoneId zoneId = ZoneId.systemDefault();
//        long epoch = time.atZone(zoneId).toEpochSecond();
//        LocalDateTime time2 = LocalDateTime.parse("2018-10-21T22:28:15");
//        long epoch2 = time2.atZone(zoneId).toEpochSecond();
//        long diff = epoch - epoch2;
//        int minute = Math.round(diff / 60);
//        int hour = Math.round(diff / 3600);
//        int day = Math.round(diff / 86400);
//        int week = Math.round(diff / 604800);
//        if (60 > (diff / 60) > 1){
//
//        }
//        System.out.println(diff);
        LocalDateTime tempDateTime = LocalDateTime.from(shareTime);
        long seconds = tempDateTime.until(time, ChronoUnit.SECONDS);
        long minutes = tempDateTime.until(time, ChronoUnit.MINUTES);
        long hours = tempDateTime.until(time, ChronoUnit.HOURS);
        long weeks = tempDateTime.until(time, ChronoUnit.WEEKS);
        long days = tempDateTime.until(time, ChronoUnit.DAYS);
        long months = tempDateTime.until(time, ChronoUnit.MONTHS);
        if (minutes >= 1 && minutes < 60){
            return minutes+" minute"+((minutes>1) ? "s": "")+" ago";
        }else if (hours >= 1 && hours < 24){
            return hours+" hour"+((hours>1) ? "s": "")+" ago";
        }else if (days >= 1 && days < 7){
            return days+" day"+((days>1) ? "s": "")+" ago";
        }else if (weeks >= 1){
            if (months >= 1 && months < 12){
                return months+" month"+((months>1) ? "s": "")+" ago";
            } else if (months>=12) {
                return shareTime.toString();
            }
            return weeks+" weeks ago";
        }
            return seconds+" secons ago";
    }
}
