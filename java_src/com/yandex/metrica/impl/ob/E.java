package com.yandex.metrica.impl.ob;

import android.content.Intent;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class E {

    /* renamed from: a  reason: collision with root package name */
    private final ICommonExecutor f9928a;

    /* renamed from: b  reason: collision with root package name */
    private volatile b f9929b;

    /* renamed from: c  reason: collision with root package name */
    private final List<c> f9930c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC0716mm<Intent> f9931d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements InterfaceC0716mm<Intent> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
        public void b(Intent intent) {
            b.a aVar;
            Intent intent2 = intent;
            b bVar = E.this.f9929b;
            if (bVar == null) {
                aVar = null;
            } else {
                aVar = bVar.f9934b;
            }
            b a10 = E.this.a(intent2);
            E.this.f9929b = a10;
            if (aVar != a10.f9934b) {
                E.this.f9928a.execute(new D(this, a10));
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final Integer f9933a;

        /* renamed from: b  reason: collision with root package name */
        public final a f9934b;

        /* loaded from: classes2.dex */
        public enum a {
            UNKNOWN(-1),
            NONE(0),
            USB(1),
            WIRELESS(2),
            AC(3);
            

            /* renamed from: a  reason: collision with root package name */
            private final int f9941a;

            a(int i10) {
                this.f9941a = i10;
            }

            public int a() {
                return this.f9941a;
            }

            public static a a(Integer num) {
                if (num != null) {
                    a[] values = values();
                    for (int i10 = 0; i10 < 5; i10++) {
                        a aVar = values[i10];
                        if (aVar.f9941a == num.intValue()) {
                            return aVar;
                        }
                    }
                }
                return UNKNOWN;
            }
        }

        public b(Integer num, a aVar) {
            this.f9933a = num;
            this.f9934b = aVar;
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(b.a aVar);
    }

    public E(ICommonExecutor iCommonExecutor, C c10) {
        a aVar = new a();
        this.f9931d = aVar;
        this.f9928a = iCommonExecutor;
        this.f9929b = a(c10.c(aVar));
    }

    public b.a b() {
        b bVar = this.f9929b;
        return bVar == null ? b.a.UNKNOWN : bVar.f9934b;
    }

    public Integer a() {
        b bVar = this.f9929b;
        if (bVar == null) {
            return null;
        }
        return bVar.f9933a;
    }

    public synchronized void a(c cVar) {
        this.f9930c.add(cVar);
        ((C0805qc) cVar).a(b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(E e10, b.a aVar) {
        synchronized (e10) {
            for (c cVar : e10.f9930c) {
                cVar.a(aVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b a(Intent intent) {
        b.a aVar = b.a.UNKNOWN;
        Integer num = null;
        if (intent != null) {
            int intExtra = intent.getIntExtra(FFmpegKitFlutterPlugin.KEY_LOG_LEVEL, -1);
            int intExtra2 = intent.getIntExtra("scale", -1);
            if (intExtra > 0 && intExtra2 > 0) {
                num = Integer.valueOf((intExtra * 100) / intExtra2);
            }
            int intExtra3 = intent.getIntExtra("plugged", -1);
            aVar = b.a.NONE;
            if (intExtra3 == 1) {
                aVar = b.a.AC;
            } else if (intExtra3 == 2) {
                aVar = b.a.USB;
            } else if (intExtra3 == 4) {
                aVar = b.a.WIRELESS;
            }
        }
        return new b(num, aVar);
    }
}
