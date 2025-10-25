package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.io.File;
@Deprecated
/* renamed from: com.yandex.metrica.impl.ob.n7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0726n7 implements InterfaceC0502e7<File> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f12973a;

    /* renamed from: b  reason: collision with root package name */
    private final File f12974b;

    /* renamed from: c  reason: collision with root package name */
    private final C0454c9 f12975c;

    /* renamed from: d  reason: collision with root package name */
    private final B0 f12976d;

    /* renamed from: e  reason: collision with root package name */
    private final C0602i7 f12977e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC0527f7<String> f12978f;

    /* renamed from: g  reason: collision with root package name */
    private final ICommonExecutor f12979g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.n7$a */
    /* loaded from: classes2.dex */
    public static class a implements InterfaceC0716mm<File> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
        public void b(File file) {
            file.delete();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.n7$b */
    /* loaded from: classes2.dex */
    static class b implements InterfaceC0716mm<String> {

        /* renamed from: a  reason: collision with root package name */
        private final InterfaceC0527f7<String> f12980a;

        b(InterfaceC0527f7<String> interfaceC0527f7) {
            this.f12980a = interfaceC0527f7;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
        public void b(String str) {
            String str2 = str;
            if (!TextUtils.isEmpty(str2)) {
                this.f12980a.b(str2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.n7$c */
    /* loaded from: classes2.dex */
    public static class c implements InterfaceC0716mm<String> {

        /* renamed from: a  reason: collision with root package name */
        private final InterfaceC0527f7<String> f12981a;

        c(InterfaceC0527f7<String> interfaceC0527f7) {
            this.f12981a = interfaceC0527f7;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
        public void b(String str) {
            String str2 = str;
            if (!TextUtils.isEmpty(str2)) {
                this.f12981a.a(str2);
            }
        }
    }

    public C0726n7(Context context, B0 b02, C0602i7 c0602i7, InterfaceC0527f7<String> interfaceC0527f7, ICommonExecutor iCommonExecutor, C0454c9 c0454c9) {
        this.f12973a = context;
        this.f12976d = b02;
        this.f12974b = b02.b(context);
        this.f12977e = c0602i7;
        this.f12978f = interfaceC0527f7;
        this.f12979g = iCommonExecutor;
        this.f12975c = c0454c9;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0502e7
    public void a(File file) {
        this.f12979g.execute(new RunnableC0870t6(file, this.f12977e, new a(), new b(this.f12978f)));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0502e7
    public synchronized void a() {
        File b10;
        if (bc.a.b() && (b10 = this.f12976d.b(this.f12973a.getFilesDir(), "YandexMetricaNativeCrashes")) != null) {
            if (this.f12975c.o()) {
                if (b10.exists()) {
                    try {
                        b10.delete();
                    } catch (Throwable unused) {
                    }
                }
            } else {
                a2(b10);
                this.f12975c.p();
            }
        }
        a2(this.f12974b);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    private void a2(File file) {
        File[] fileArr;
        if (file == null || !file.exists()) {
            fileArr = new File[0];
        } else {
            fileArr = file.listFiles(new C0701m7(this));
            if (fileArr == null) {
                fileArr = new File[0];
            }
        }
        for (File file2 : fileArr) {
            this.f12979g.execute(new RunnableC0870t6(file2, this.f12977e, new a(), new c(this.f12978f)));
        }
    }
}
