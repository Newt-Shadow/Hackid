.class public Lio/appmetrica/analytics/profile/NotificationsEnabledAttribute;
.super Lio/appmetrica/analytics/profile/BooleanAttribute;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/k8;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/k8;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lio/appmetrica/analytics/impl/jl;

    .line 7
    .line 8
    invoke-direct {v1}, Lio/appmetrica/analytics/impl/jl;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "appmetrica_notifications_enabled"

    .line 12
    .line 13
    invoke-direct {p0, v2, v0, v1}, Lio/appmetrica/analytics/profile/BooleanAttribute;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Yn;Lio/appmetrica/analytics/impl/l2;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
