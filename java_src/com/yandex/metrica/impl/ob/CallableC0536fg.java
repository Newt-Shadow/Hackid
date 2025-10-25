package com.yandex.metrica.impl.ob;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C0486dg;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.fg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class CallableC0536fg implements Callable<C0486dg> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C0561gg f12418a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallableC0536fg(C0561gg c0561gg) {
        this.f12418a = c0561gg;
    }

    @Override // java.util.concurrent.Callable
    public C0486dg call() {
        Context context;
        Context context2;
        Cursor cursor;
        Cursor cursor2;
        Cursor cursor3;
        Cursor cursor4;
        Cursor cursor5;
        Uri parse = Uri.parse("content://com.huawei.appmarket.commondata/item/5");
        context = this.f12418a.f12475a;
        ContentResolver contentResolver = context.getContentResolver();
        C0561gg c0561gg = this.f12418a;
        context2 = c0561gg.f12475a;
        c0561gg.f12476b = contentResolver.query(parse, null, null, new String[]{context2.getPackageName()}, null);
        cursor = this.f12418a.f12476b;
        if (cursor != null) {
            cursor2 = this.f12418a.f12476b;
            if (cursor2.moveToFirst()) {
                cursor3 = this.f12418a.f12476b;
                String string = cursor3.getString(0);
                if (!TextUtils.isEmpty(string)) {
                    cursor4 = this.f12418a.f12476b;
                    long j10 = cursor4.getLong(1);
                    cursor5 = this.f12418a.f12476b;
                    return new C0486dg(string, j10, cursor5.getLong(2), C0486dg.a.HMS);
                }
            }
        }
        return null;
    }
}
