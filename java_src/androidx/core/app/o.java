package androidx.core.app;

import android.os.Bundle;
import androidx.core.app.k;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class o {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f1968a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static final Object f1969b = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bundle a(k.a aVar) {
        int i10;
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        IconCompat d10 = aVar.d();
        if (d10 != null) {
            i10 = d10.m();
        } else {
            i10 = 0;
        }
        bundle2.putInt("icon", i10);
        bundle2.putCharSequence("title", aVar.h());
        bundle2.putParcelable("actionIntent", aVar.a());
        if (aVar.c() != null) {
            bundle = new Bundle(aVar.c());
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.b());
        bundle2.putBundle("extras", bundle);
        bundle2.putParcelableArray("remoteInputs", c(aVar.e()));
        bundle2.putBoolean("showsUserInterface", aVar.g());
        bundle2.putInt("semanticAction", aVar.f());
        return bundle2;
    }

    private static Bundle b(v vVar) {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", vVar.i());
        bundle.putCharSequence("label", vVar.h());
        bundle.putCharSequenceArray("choices", vVar.e());
        bundle.putBoolean("allowFreeFormInput", vVar.c());
        bundle.putBundle("extras", vVar.g());
        Set<String> d10 = vVar.d();
        if (d10 != null && !d10.isEmpty()) {
            ArrayList<String> arrayList = new ArrayList<>(d10.size());
            for (String str : d10) {
                arrayList.add(str);
            }
            bundle.putStringArrayList("allowedDataTypes", arrayList);
        }
        return bundle;
    }

    private static Bundle[] c(v[] vVarArr) {
        if (vVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[vVarArr.length];
        for (int i10 = 0; i10 < vVarArr.length; i10++) {
            bundleArr[i10] = b(vVarArr[i10]);
        }
        return bundleArr;
    }
}
