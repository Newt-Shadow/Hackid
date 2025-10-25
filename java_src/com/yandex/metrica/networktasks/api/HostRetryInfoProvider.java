package com.yandex.metrica.networktasks.api;
/* loaded from: classes2.dex */
public interface HostRetryInfoProvider {
    long getLastAttemptTimeSeconds();

    int getNextSendAttemptNumber();

    void saveLastAttemptTimeSeconds(long j10);

    void saveNextSendAttemptNumber(int i10);
}
