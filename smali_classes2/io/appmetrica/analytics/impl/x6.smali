.class public abstract Lio/appmetrica/analytics/impl/x6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ra;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/w6;

.field public final b:Lio/appmetrica/analytics/ICrashTransformer;

.field public final c:Lio/appmetrica/analytics/impl/Y9;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/w6;Lio/appmetrica/analytics/ICrashTransformer;Lio/appmetrica/analytics/impl/Y9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/x6;->a:Lio/appmetrica/analytics/impl/w6;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/x6;->b:Lio/appmetrica/analytics/ICrashTransformer;

    .line 7
    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/impl/x6;->c:Lio/appmetrica/analytics/impl/Y9;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/ICrashTransformer;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/appmetrica/analytics/impl/x6;->b:Lio/appmetrica/analytics/ICrashTransformer;

    return-object v0
.end method

.method public final a(Ljava/lang/Throwable;Lio/appmetrica/analytics/impl/P;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/x6;->a:Lio/appmetrica/analytics/impl/w6;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/w6;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/x6;->b:Lio/appmetrica/analytics/ICrashTransformer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lio/appmetrica/analytics/ICrashTransformer;->process(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/x6;->c:Lio/appmetrica/analytics/impl/Y9;

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Y9;->b:Lio/appmetrica/analytics/impl/Gm;

    .line 6
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Bi;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/impl/x6;->c:Lio/appmetrica/analytics/impl/Y9;

    .line 8
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Y9;->c:Lio/appmetrica/analytics/impl/o3;

    .line 9
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Bi;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 10
    invoke-static {p1, p2, v2, v0, v1}, Lio/appmetrica/analytics/impl/zn;->a(Ljava/lang/Throwable;Lio/appmetrica/analytics/impl/P;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)Lio/appmetrica/analytics/impl/wn;

    move-result-object p1

    .line 11
    move-object p2, p0

    check-cast p2, Lio/appmetrica/analytics/impl/Ch;

    .line 12
    iget-object p2, p2, Lio/appmetrica/analytics/impl/Ch;->d:Lio/appmetrica/analytics/impl/Cn;

    check-cast p2, Lio/appmetrica/analytics/impl/qc;

    .line 13
    iget-object v0, p2, Lio/appmetrica/analytics/impl/Cn;->a:Lio/appmetrica/analytics/impl/fb;

    .line 14
    invoke-interface {v0}, Lio/appmetrica/analytics/impl/fb;->a()Lio/appmetrica/analytics/impl/eb;

    move-result-object v0

    iget-object p2, p2, Lio/appmetrica/analytics/impl/qc;->b:Lio/appmetrica/analytics/AppMetricaConfig;

    invoke-interface {v0, p2}, Lio/appmetrica/analytics/impl/eb;->b(Lio/appmetrica/analytics/AppMetricaConfig;)Lio/appmetrica/analytics/impl/gb;

    move-result-object p2

    .line 15
    invoke-interface {p2, p1}, Lio/appmetrica/analytics/impl/gb;->a(Lio/appmetrica/analytics/impl/wn;)V

    :cond_1
    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/w6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/x6;->a:Lio/appmetrica/analytics/impl/w6;

    .line 2
    .line 3
    return-object v0
.end method
