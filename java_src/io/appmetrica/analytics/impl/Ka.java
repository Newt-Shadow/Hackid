package io.appmetrica.analytics.impl;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public final class Ka implements Callable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ La f18484a;

    public Ka(La la2) {
        this.f18484a = la2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Uri parse = Uri.parse("content://com.huawei.appmarket.commondata/item/5");
        ContentResolver contentResolver = this.f18484a.f18520a.getContentResolver();
        La la2 = this.f18484a;
        la2.f18521b = contentResolver.query(parse, null, null, new String[]{la2.f18520a.getPackageName()}, null);
        Cursor cursor = this.f18484a.f18521b;
        if (cursor != null && cursor.moveToFirst()) {
            String string = this.f18484a.f18521b.getString(0);
            if (!TextUtils.isEmpty(string)) {
                return new C1322lg(string, this.f18484a.f18521b.getLong(1), this.f18484a.f18521b.getLong(2), EnumC1297kg.f19974d);
            }
        }
        return null;
    }
}
