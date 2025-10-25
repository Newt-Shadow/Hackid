package g;

import android.content.Context;
import android.content.Intent;
import g.a;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import xc.k;
import xc.q;
import yc.g0;
import yc.h0;
import yc.w;
/* loaded from: classes.dex */
public final class g extends g.a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f16080a = new a(null);

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Intent a(String[] input) {
            m.e(input, "input");
            Intent putExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", input);
            m.d(putExtra, "Intent(ACTION_REQUEST_PE…EXTRA_PERMISSIONS, input)");
            return putExtra;
        }
    }

    @Override // g.a
    /* renamed from: d */
    public Intent a(Context context, String[] input) {
        m.e(context, "context");
        m.e(input, "input");
        return f16080a.a(input);
    }

    @Override // g.a
    /* renamed from: e */
    public a.C0170a b(Context context, String[] input) {
        boolean z10;
        int b10;
        int b11;
        boolean z11;
        Map e10;
        m.e(context, "context");
        m.e(input, "input");
        boolean z12 = true;
        if (input.length == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            e10 = h0.e();
            return new a.C0170a(e10);
        }
        int length = input.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            if (androidx.core.content.a.a(context, input[i10]) == 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (!z11) {
                z12 = false;
                break;
            }
            i10++;
        }
        if (z12) {
            b10 = g0.b(input.length);
            b11 = od.i.b(b10, 16);
            LinkedHashMap linkedHashMap = new LinkedHashMap(b11);
            for (String str : input) {
                k a10 = q.a(str, Boolean.TRUE);
                linkedHashMap.put(a10.c(), a10.d());
            }
            return new a.C0170a(linkedHashMap);
        }
        return null;
    }

    @Override // g.a
    /* renamed from: f */
    public Map c(int i10, Intent intent) {
        Map e10;
        List t10;
        List p02;
        Map o10;
        boolean z10;
        Map e11;
        Map e12;
        if (i10 != -1) {
            e12 = h0.e();
            return e12;
        } else if (intent == null) {
            e11 = h0.e();
            return e11;
        } else {
            String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
            if (intArrayExtra == null || stringArrayExtra == null) {
                e10 = h0.e();
                return e10;
            }
            ArrayList arrayList = new ArrayList(intArrayExtra.length);
            for (int i11 : intArrayExtra) {
                if (i11 == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                arrayList.add(Boolean.valueOf(z10));
            }
            t10 = yc.k.t(stringArrayExtra);
            p02 = w.p0(t10, arrayList);
            o10 = h0.o(p02);
            return o10;
        }
    }
}
