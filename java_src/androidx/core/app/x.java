package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class x implements Iterable {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList f2021a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final Context f2022b;

    /* loaded from: classes.dex */
    public interface a {
        Intent getSupportParentActivityIntent();
    }

    private x(Context context) {
        this.f2022b = context;
    }

    public static x l(Context context) {
        return new x(context);
    }

    public x d(Intent intent) {
        this.f2021a.add(intent);
        return this;
    }

    public x g(Activity activity) {
        Intent intent;
        if (activity instanceof a) {
            intent = ((a) activity).getSupportParentActivityIntent();
        } else {
            intent = null;
        }
        if (intent == null) {
            intent = i.a(activity);
        }
        if (intent != null) {
            ComponentName component = intent.getComponent();
            if (component == null) {
                component = intent.resolveActivity(this.f2022b.getPackageManager());
            }
            i(component);
            d(intent);
        }
        return this;
    }

    public x i(ComponentName componentName) {
        int size = this.f2021a.size();
        try {
            Intent b10 = i.b(this.f2022b, componentName);
            while (b10 != null) {
                this.f2021a.add(size, b10);
                b10 = i.b(this.f2022b, b10.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e10) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e10);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return this.f2021a.iterator();
    }

    public void m() {
        n(null);
    }

    public void n(Bundle bundle) {
        if (!this.f2021a.isEmpty()) {
            Intent[] intentArr = (Intent[]) this.f2021a.toArray(new Intent[0]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            if (!androidx.core.content.a.m(this.f2022b, intentArr, bundle)) {
                Intent intent = new Intent(intentArr[intentArr.length - 1]);
                intent.addFlags(268435456);
                this.f2022b.startActivity(intent);
                return;
            }
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }
}
