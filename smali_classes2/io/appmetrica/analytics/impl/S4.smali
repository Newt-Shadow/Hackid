.class public final Lio/appmetrica/analytics/impl/S4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/sa;

.field public final b:Lio/appmetrica/analytics/impl/yi;

.field public final c:Lio/appmetrica/analytics/impl/Fn;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/O4;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/sa;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/sa;-><init>(Lio/appmetrica/analytics/impl/O4;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/S4;->a:Lio/appmetrica/analytics/impl/sa;

    .line 10
    .line 11
    new-instance v0, Lio/appmetrica/analytics/impl/yi;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/yi;-><init>(Lio/appmetrica/analytics/impl/O4;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/appmetrica/analytics/impl/S4;->b:Lio/appmetrica/analytics/impl/yi;

    .line 17
    .line 18
    new-instance v0, Lio/appmetrica/analytics/impl/Fn;

    .line 19
    .line 20
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/za;->g()Lio/appmetrica/analytics/impl/P6;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, p1, v1}, Lio/appmetrica/analytics/impl/Fn;-><init>(Lio/appmetrica/analytics/impl/O4;Lio/appmetrica/analytics/impl/P6;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lio/appmetrica/analytics/impl/S4;->c:Lio/appmetrica/analytics/impl/Fn;

    .line 32
    .line 33
    return-void
.end method
