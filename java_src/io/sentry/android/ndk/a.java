package io.sentry.android.ndk;

import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.android.core.f1;
import io.sentry.j5;
import io.sentry.protocol.DebugImage;
import io.sentry.s5;
import io.sentry.util.q;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public final class a implements f1 {

    /* renamed from: c  reason: collision with root package name */
    private static volatile List f22514c;

    /* renamed from: d  reason: collision with root package name */
    private static final Object f22515d = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final s5 f22516a;

    /* renamed from: b  reason: collision with root package name */
    private final NativeModuleListLoader f22517b;

    public a(SentryAndroidOptions sentryAndroidOptions, NativeModuleListLoader nativeModuleListLoader) {
        this.f22516a = (s5) q.c(sentryAndroidOptions, "The SentryAndroidOptions is required.");
        this.f22517b = (NativeModuleListLoader) q.c(nativeModuleListLoader, "The NativeModuleListLoader is required.");
    }

    private Set c(List list, Set set) {
        DebugImage debugImage;
        long j10;
        HashSet hashSet = new HashSet();
        int i10 = 0;
        while (i10 < list.size()) {
            DebugImage debugImage2 = (DebugImage) list.get(i10);
            i10++;
            String str = null;
            if (i10 < list.size()) {
                debugImage = (DebugImage) list.get(i10);
            } else {
                debugImage = null;
            }
            if (debugImage != null) {
                str = debugImage.getImageAddr();
            }
            Iterator it = set.iterator();
            while (true) {
                if (it.hasNext()) {
                    try {
                        long parseLong = Long.parseLong(((String) it.next()).replace("0x", ""), 16);
                        String imageAddr = debugImage2.getImageAddr();
                        if (imageAddr != null) {
                            long parseLong2 = Long.parseLong(imageAddr.replace("0x", ""), 16);
                            Long imageSize = debugImage2.getImageSize();
                            if (imageSize != null) {
                                j10 = imageSize.longValue() + parseLong2;
                            } else if (str != null) {
                                j10 = Long.parseLong(str.replace("0x", ""), 16);
                            } else {
                                j10 = Long.MAX_VALUE;
                            }
                            if (parseLong >= parseLong2 && parseLong < j10) {
                                hashSet.add(debugImage2);
                                break;
                            }
                        } else {
                            continue;
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
        return hashSet;
    }

    @Override // io.sentry.android.core.f1
    public Set a(Set set) {
        synchronized (f22515d) {
            List b10 = b();
            if (b10 == null) {
                return null;
            }
            if (set.isEmpty()) {
                return null;
            }
            Set c10 = c(b10, set);
            if (c10.isEmpty()) {
                this.f22516a.getLogger().c(j5.WARNING, "No debug images found for any of the %d addresses.", Integer.valueOf(set.size()));
                return null;
            }
            return c10;
        }
    }

    @Override // io.sentry.android.core.f1
    public List b() {
        DebugImage[] a10;
        synchronized (f22515d) {
            if (f22514c == null && (a10 = this.f22517b.a()) != null) {
                f22514c = Arrays.asList(a10);
                this.f22516a.getLogger().c(j5.DEBUG, "Debug images loaded: %d", Integer.valueOf(f22514c.size()));
            }
        }
        return f22514c;
    }
}
