.class public final Lio/appmetrica/analytics/impl/go;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Lio/appmetrica/analytics/impl/co;

.field public final d:Lio/appmetrica/analytics/impl/co;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/go;->a:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/appmetrica/analytics/impl/go;->b:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    new-instance v0, Lio/appmetrica/analytics/impl/na;

    .line 14
    .line 15
    const-string v1, "appmetrica_vital.dat"

    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, Lio/appmetrica/analytics/impl/na;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lio/appmetrica/analytics/impl/co;

    .line 21
    .line 22
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/za;->x()Lio/appmetrica/analytics/impl/Xe;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2, v0}, Lio/appmetrica/analytics/impl/co;-><init>(Lio/appmetrica/analytics/impl/Xe;Lio/appmetrica/analytics/impl/na;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lio/appmetrica/analytics/impl/go;->c:Lio/appmetrica/analytics/impl/co;

    .line 34
    .line 35
    new-instance v1, Lio/appmetrica/analytics/impl/co;

    .line 36
    .line 37
    new-instance v2, Lio/appmetrica/analytics/impl/Xe;

    .line 38
    .line 39
    invoke-static {p1}, Lio/appmetrica/analytics/impl/k7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/k7;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/k7;->d()Lio/appmetrica/analytics/impl/Ta;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v2, p1}, Lio/appmetrica/analytics/impl/Xe;-><init>(Lio/appmetrica/analytics/impl/Ta;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v2, v0}, Lio/appmetrica/analytics/impl/co;-><init>(Lio/appmetrica/analytics/impl/Xe;Lio/appmetrica/analytics/impl/na;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lio/appmetrica/analytics/impl/go;->d:Lio/appmetrica/analytics/impl/co;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/co;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/go;->c:Lio/appmetrica/analytics/impl/co;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lio/appmetrica/analytics/impl/co;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/go;->d:Lio/appmetrica/analytics/impl/co;

    .line 2
    .line 3
    return-object v0
.end method
