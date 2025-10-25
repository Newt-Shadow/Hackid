package com.dexterous.flutterlocalnotifications.models;

import androidx.annotation.Keep;
import com.google.gson.g;
import com.google.gson.h;
import com.google.gson.i;
import java.lang.reflect.Type;
@Keep
/* loaded from: classes.dex */
public enum ScheduleMode {
    alarmClock,
    exact,
    exactAllowWhileIdle,
    inexact,
    inexactAllowWhileIdle;

    /* loaded from: classes.dex */
    public static class Deserializer implements h {
        @Override // com.google.gson.h
        /* renamed from: a */
        public ScheduleMode deserialize(i iVar, Type type, g gVar) {
            try {
                return ScheduleMode.valueOf(iVar.n());
            } catch (Exception unused) {
                if (iVar.d()) {
                    return ScheduleMode.exactAllowWhileIdle;
                }
                return ScheduleMode.exact;
            }
        }
    }

    public boolean useAlarmClock() {
        if (this == alarmClock) {
            return true;
        }
        return false;
    }

    public boolean useAllowWhileIdle() {
        if (this != exactAllowWhileIdle && this != inexactAllowWhileIdle) {
            return false;
        }
        return true;
    }

    public boolean useExactAlarm() {
        if (this != exact && this != exactAllowWhileIdle) {
            return false;
        }
        return true;
    }
}
