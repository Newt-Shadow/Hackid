package com.google.android.gms.internal.measurement;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public abstract class cb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static ua a(Class cls) {
        String str;
        ClassLoader classLoader = cb.class.getClassLoader();
        if (!cls.equals(ua.class)) {
            if (!cls.getPackage().equals(cb.class.getPackage())) {
                throw new IllegalArgumentException(cls.getName());
            }
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        } else {
            str = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";
        }
        try {
            try {
                try {
                    try {
                        android.support.v4.media.session.b.a(Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0]));
                        throw null;
                    } catch (InstantiationException e10) {
                        throw new IllegalStateException(e10);
                    }
                } catch (IllegalAccessException e11) {
                    throw new IllegalStateException(e11);
                }
            } catch (NoSuchMethodException e12) {
                throw new IllegalStateException(e12);
            } catch (InvocationTargetException e13) {
                throw new IllegalStateException(e13);
            }
        } catch (ClassNotFoundException unused) {
            Iterator it = ServiceLoader.load(cb.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    android.support.v4.media.session.b.a(it.next());
                    throw null;
                } catch (ServiceConfigurationError e14) {
                    Logger.getLogger(pa.class.getName()).logp(Level.SEVERE, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", "Unable to load ".concat(cls.getSimpleName()), (Throwable) e14);
                }
            }
            if (arrayList.size() == 1) {
                return (ua) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (ua) cls.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e15) {
                throw new IllegalStateException(e15);
            } catch (NoSuchMethodException e16) {
                throw new IllegalStateException(e16);
            } catch (InvocationTargetException e17) {
                throw new IllegalStateException(e17);
            }
        }
    }
}
