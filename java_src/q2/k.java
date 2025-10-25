package q2;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import com.google.android.datatransport.runtime.backends.TransportBackendDiscovery;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
class k implements e {

    /* renamed from: a  reason: collision with root package name */
    private final a f28005a;

    /* renamed from: b  reason: collision with root package name */
    private final i f28006b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f28007c;

    /* loaded from: classes.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f28008a;

        /* renamed from: b  reason: collision with root package name */
        private Map f28009b = null;

        a(Context context) {
            this.f28008a = context;
        }

        private Map a(Context context) {
            Bundle d10 = d(context);
            if (d10 == null) {
                Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
                return Collections.emptyMap();
            }
            HashMap hashMap = new HashMap();
            for (String str : d10.keySet()) {
                Object obj = d10.get(str);
                if ((obj instanceof String) && str.startsWith("backend:")) {
                    for (String str2 : ((String) obj).split(StringUtils.COMMA, -1)) {
                        String trim = str2.trim();
                        if (!trim.isEmpty()) {
                            hashMap.put(trim, str.substring(8));
                        }
                    }
                }
            }
            return hashMap;
        }

        private Map c() {
            if (this.f28009b == null) {
                this.f28009b = a(this.f28008a);
            }
            return this.f28009b;
        }

        private static Bundle d(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("BackendRegistry", "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, TransportBackendDiscovery.class), 128);
                if (serviceInfo == null) {
                    Log.w("BackendRegistry", "TransportBackendDiscovery has no service info.");
                    return null;
                }
                return serviceInfo.metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("BackendRegistry", "Application info not found.");
                return null;
            }
        }

        d b(String str) {
            String str2 = (String) c().get(str);
            if (str2 == null) {
                return null;
            }
            try {
                return (d) Class.forName(str2).asSubclass(d.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e10) {
                Log.w("BackendRegistry", String.format("Class %s is not found.", str2), e10);
                return null;
            } catch (IllegalAccessException e11) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s.", str2), e11);
                return null;
            } catch (InstantiationException e12) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s.", str2), e12);
                return null;
            } catch (NoSuchMethodException e13) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s", str2), e13);
                return null;
            } catch (InvocationTargetException e14) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s", str2), e14);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Context context, i iVar) {
        this(new a(context), iVar);
    }

    @Override // q2.e
    public synchronized m get(String str) {
        if (this.f28007c.containsKey(str)) {
            return (m) this.f28007c.get(str);
        }
        d b10 = this.f28005a.b(str);
        if (b10 == null) {
            return null;
        }
        m create = b10.create(this.f28006b.a(str));
        this.f28007c.put(str, create);
        return create;
    }

    k(a aVar, i iVar) {
        this.f28007c = new HashMap();
        this.f28005a = aVar;
        this.f28006b = iVar;
    }
}
