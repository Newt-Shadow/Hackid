.class public final Lio/appmetrica/analytics/impl/Ch;
.super Lio/appmetrica/analytics/impl/x6;
.source "SourceFile"


# instance fields
.field public final d:Lio/appmetrica/analytics/impl/Cn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Cn;Lio/appmetrica/analytics/impl/w6;Lio/appmetrica/analytics/ICrashTransformer;)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Y9;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Y9;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3, p4, v0}, Lio/appmetrica/analytics/impl/Ch;-><init>(Lio/appmetrica/analytics/impl/Cn;Lio/appmetrica/analytics/impl/w6;Lio/appmetrica/analytics/ICrashTransformer;Lio/appmetrica/analytics/impl/Y9;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Cn;Lio/appmetrica/analytics/impl/w6;Lio/appmetrica/analytics/ICrashTransformer;Lio/appmetrica/analytics/impl/Y9;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lio/appmetrica/analytics/impl/x6;-><init>(Lio/appmetrica/analytics/impl/w6;Lio/appmetrica/analytics/ICrashTransformer;Lio/appmetrica/analytics/impl/Y9;)V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ch;->d:Lio/appmetrica/analytics/impl/Cn;

    return-void
.end method


# virtual methods
.method public final c()Lio/appmetrica/analytics/impl/Cn;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ch;->d:Lio/appmetrica/analytics/impl/Cn;

    .line 2
    .line 3
    return-object v0
.end method
