package com.yandex.metrica.impl.ob;

import android.app.usage.StorageStatsManager;
import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import java.util.UUID;
/* renamed from: com.yandex.metrica.impl.ob.q0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0793q0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f13205a;

    /* renamed from: b  reason: collision with root package name */
    private final b f13206b;

    /* renamed from: com.yandex.metrica.impl.ob.q0$a */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f13207a;

        /* renamed from: b  reason: collision with root package name */
        public final long f13208b;

        public a(long j10, long j11) {
            this.f13207a = j10;
            this.f13208b = j11;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q0$b */
    /* loaded from: classes2.dex */
    static class b {
        b() {
        }
    }

    public C0793q0(Context context) {
        this(context, new b());
    }

    public a a() {
        StatFs statFs;
        long j10;
        UUID fromString;
        long totalBytes;
        long freeBytes;
        long j11 = 0;
        if (A2.a(26)) {
            StorageStatsManager a10 = xo.a(this.f13205a.getSystemService("storagestats"));
            StorageManager storageManager = (StorageManager) this.f13205a.getSystemService("storage");
            if (storageManager != null && a10 != null) {
                long j12 = 0;
                for (StorageVolume storageVolume : storageManager.getStorageVolumes()) {
                    try {
                        String uuid = storageVolume.getUuid();
                        if (uuid == null) {
                            fromString = StorageManager.UUID_DEFAULT;
                        } else {
                            fromString = UUID.fromString(uuid);
                        }
                        totalBytes = a10.getTotalBytes(fromString);
                        freeBytes = a10.getFreeBytes(fromString);
                        j11 += totalBytes;
                        j12 += freeBytes;
                    } catch (Throwable unused) {
                    }
                }
                long j13 = j11;
                j11 = j12;
                j10 = j13;
            } else {
                j10 = 0;
            }
            return new a(j10 / 1024, j11 / 1024);
        } else if (A2.a(18)) {
            try {
                this.f13206b.getClass();
                StatFs statFs2 = new StatFs(Environment.getDataDirectory().getAbsolutePath());
                long blockSizeLong = statFs2.getBlockSizeLong();
                return new a((statFs2.getBlockCountLong() * blockSizeLong) / 1024, (statFs2.getAvailableBlocksLong() * blockSizeLong) / 1024);
            } catch (Throwable unused2) {
                return new a(0L, 0L);
            }
        } else {
            try {
                this.f13206b.getClass();
                long blockSize = new StatFs(Environment.getDataDirectory().getAbsolutePath()).getBlockSize();
                return new a((statFs.getBlockCount() * blockSize) / 1024, (statFs.getAvailableBlocks() * blockSize) / 1024);
            } catch (Throwable unused3) {
                return new a(0L, 0L);
            }
        }
    }

    C0793q0(Context context, b bVar) {
        this.f13205a = context;
        this.f13206b = bVar;
    }
}
