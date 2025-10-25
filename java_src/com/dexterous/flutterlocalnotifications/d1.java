package com.dexterous.flutterlocalnotifications;

import com.dexterous.flutterlocalnotifications.models.NotificationDetails;
import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class d1 implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public final NotificationDetails f5542a;

    /* renamed from: b  reason: collision with root package name */
    public final int f5543b;

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList f5544c;

    public d1(NotificationDetails notificationDetails, int i10, ArrayList arrayList) {
        this.f5542a = notificationDetails;
        this.f5543b = i10;
        this.f5544c = arrayList;
    }

    public String toString() {
        return "ForegroundServiceStartParameter{notificationData=" + this.f5542a + ", startMode=" + this.f5543b + ", foregroundServiceTypes=" + this.f5544c + '}';
    }
}
