package com.yandex.metrica.impl.ob;

import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.x0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0960x0 {

    /* renamed from: a  reason: collision with root package name */
    private C0417am f13913a = new C0417am();

    /* renamed from: b  reason: collision with root package name */
    private C0443bn f13914b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0960x0(C0443bn c0443bn) {
        this.f13914b = c0443bn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2) {
        this.f13914b.b(this.f13913a, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        if (this.f13913a.isEmpty()) {
            return null;
        }
        return new JSONObject(this.f13913a).toString();
    }
}
