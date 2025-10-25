package io.sentry.android.replay.gestures;

import android.view.MotionEvent;
import io.sentry.android.replay.u;
import io.sentry.rrweb.e;
import io.sentry.rrweb.f;
import io.sentry.transport.p;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import yc.n;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: e  reason: collision with root package name */
    public static final a f22726e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    public static final int f22727f = 8;

    /* renamed from: a  reason: collision with root package name */
    private final p f22728a;

    /* renamed from: b  reason: collision with root package name */
    private final LinkedHashMap f22729b;

    /* renamed from: c  reason: collision with root package name */
    private long f22730c;

    /* renamed from: d  reason: collision with root package name */
    private long f22731d;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(p dateProvider) {
        m.e(dateProvider, "dateProvider");
        this.f22728a = dateProvider;
        this.f22729b = new LinkedHashMap(10);
    }

    public final List a(MotionEvent event, u recorderConfig) {
        List b10;
        List b11;
        int r10;
        List b12;
        m.e(event, "event");
        m.e(recorderConfig, "recorderConfig");
        int actionMasked = event.getActionMasked();
        int i10 = 10;
        int i11 = -1;
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked != 6) {
                                return null;
                            }
                        }
                    } else {
                        this.f22729b.clear();
                        e eVar = new e();
                        eVar.f(this.f22728a.a());
                        eVar.u(event.getX() * recorderConfig.e());
                        eVar.v(event.getY() * recorderConfig.f());
                        eVar.q(0);
                        eVar.s(0);
                        eVar.r(e.b.TouchCancel);
                        b12 = n.b(eVar);
                        return b12;
                    }
                } else {
                    long a10 = this.f22728a.a();
                    long j10 = this.f22731d;
                    if (j10 != 0 && j10 + 50 > a10) {
                        return null;
                    }
                    this.f22731d = a10;
                    Set<Integer> keySet = this.f22729b.keySet();
                    m.d(keySet, "currentPositions.keys");
                    for (Integer pId : keySet) {
                        m.d(pId, "pId");
                        int findPointerIndex = event.findPointerIndex(pId.intValue());
                        if (findPointerIndex != i11) {
                            if (this.f22730c == 0) {
                                this.f22730c = a10;
                            }
                            Object obj = this.f22729b.get(pId);
                            m.b(obj);
                            f.b bVar = new f.b();
                            bVar.i(event.getX(findPointerIndex) * recorderConfig.e());
                            bVar.j(event.getY(findPointerIndex) * recorderConfig.f());
                            bVar.f(0);
                            bVar.g(a10 - this.f22730c);
                            ((Collection) obj).add(bVar);
                        }
                        i11 = -1;
                    }
                    long j11 = a10 - this.f22730c;
                    if (j11 > 500) {
                        ArrayList arrayList = new ArrayList(this.f22729b.size());
                        for (Map.Entry entry : this.f22729b.entrySet()) {
                            int intValue = ((Number) entry.getKey()).intValue();
                            ArrayList arrayList2 = (ArrayList) entry.getValue();
                            if (!arrayList2.isEmpty()) {
                                f fVar = new f();
                                fVar.f(a10);
                                r10 = yc.p.r(arrayList2, i10);
                                ArrayList arrayList3 = new ArrayList(r10);
                                for (Iterator it = arrayList2.iterator(); it.hasNext(); it = it) {
                                    f.b bVar2 = (f.b) it.next();
                                    bVar2.g(bVar2.e() - j11);
                                    arrayList3.add(bVar2);
                                }
                                fVar.n(arrayList3);
                                fVar.m(intValue);
                                arrayList.add(fVar);
                                Object obj2 = this.f22729b.get(Integer.valueOf(intValue));
                                m.b(obj2);
                                ((ArrayList) obj2).clear();
                                i10 = 10;
                            }
                        }
                        this.f22730c = 0L;
                        return arrayList;
                    }
                    return null;
                }
            }
            int pointerId = event.getPointerId(event.getActionIndex());
            int findPointerIndex2 = event.findPointerIndex(pointerId);
            if (findPointerIndex2 == -1) {
                return null;
            }
            this.f22729b.remove(Integer.valueOf(pointerId));
            e eVar2 = new e();
            eVar2.f(this.f22728a.a());
            eVar2.u(event.getX(findPointerIndex2) * recorderConfig.e());
            eVar2.v(event.getY(findPointerIndex2) * recorderConfig.f());
            eVar2.q(0);
            eVar2.s(pointerId);
            eVar2.r(e.b.TouchEnd);
            b11 = n.b(eVar2);
            return b11;
        }
        int pointerId2 = event.getPointerId(event.getActionIndex());
        int findPointerIndex3 = event.findPointerIndex(pointerId2);
        if (findPointerIndex3 == -1) {
            return null;
        }
        this.f22729b.put(Integer.valueOf(pointerId2), new ArrayList(10));
        e eVar3 = new e();
        eVar3.f(this.f22728a.a());
        eVar3.u(event.getX(findPointerIndex3) * recorderConfig.e());
        eVar3.v(event.getY(findPointerIndex3) * recorderConfig.f());
        eVar3.q(0);
        eVar3.s(pointerId2);
        eVar3.r(e.b.TouchStart);
        b10 = n.b(eVar3);
        return b10;
    }
}
