.class public interface abstract Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi$Companion;->$$INSTANCE:Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi$Companion;

    sput-object v0, Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi;->Companion:Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi$Companion;

    return-void
.end method


# virtual methods
.method public abstract getAppInstanceId(Lid/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid/l;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getSessionId(Lid/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid/l;",
            ")V"
        }
    .end annotation
.end method

.method public abstract initiateOnDeviceConversionMeasurement(Ljava/util/Map;Lid/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lid/l;",
            ")V"
        }
    .end annotation
.end method

.method public abstract logEvent(Ljava/util/Map;Lid/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lid/l;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetAnalyticsData(Lid/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid/l;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setAnalyticsCollectionEnabled(ZLid/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lid/l;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setConsent(Ljava/util/Map;Lid/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lid/l;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setDefaultEventParameters(Ljava/util/Map;Lid/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lid/l;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setSessionTimeoutDuration(JLid/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lid/l;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setUserId(Ljava/lang/String;Lid/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lid/l;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setUserProperty(Ljava/lang/String;Ljava/lang/String;Lid/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lid/l;",
            ")V"
        }
    .end annotation
.end method
