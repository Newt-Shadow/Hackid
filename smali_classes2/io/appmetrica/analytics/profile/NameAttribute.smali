.class public Lio/appmetrica/analytics/profile/NameAttribute;
.super Lio/appmetrica/analytics/profile/StringAttribute;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Hm;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    const-string v2, "Name attribute"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Hm;-><init>(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lio/appmetrica/analytics/impl/k8;

    .line 11
    .line 12
    invoke-direct {v1}, Lio/appmetrica/analytics/impl/k8;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lio/appmetrica/analytics/impl/jl;

    .line 16
    .line 17
    invoke-direct {v2}, Lio/appmetrica/analytics/impl/jl;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "appmetrica_name"

    .line 21
    .line 22
    invoke-direct {p0, v3, v0, v1, v2}, Lio/appmetrica/analytics/profile/StringAttribute;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Hm;Lio/appmetrica/analytics/impl/Yn;Lio/appmetrica/analytics/impl/l2;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
