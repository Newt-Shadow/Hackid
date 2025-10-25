.class public Lio/appmetrica/analytics/impl/ng;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Za;

.field public final b:Lio/appmetrica/analytics/impl/ig;

.field public final c:Lio/appmetrica/analytics/impl/Xa;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Za;Lio/appmetrica/analytics/impl/ig;Lio/appmetrica/analytics/impl/Xa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ng;->a:Lio/appmetrica/analytics/impl/Za;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/ng;->b:Lio/appmetrica/analytics/impl/ig;

    .line 7
    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/impl/ng;->c:Lio/appmetrica/analytics/impl/Xa;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Za;
    .locals 1

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ng;->a:Lio/appmetrica/analytics/impl/Za;

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/lg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ng;->a:Lio/appmetrica/analytics/impl/Za;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Za;->a(Lio/appmetrica/analytics/impl/lg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ng;->b:Lio/appmetrica/analytics/impl/ig;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/ig;->a(Lio/appmetrica/analytics/impl/lg;)V

    .line 3
    iget-object p1, p0, Lio/appmetrica/analytics/impl/ng;->c:Lio/appmetrica/analytics/impl/Xa;

    invoke-interface {p1}, Lio/appmetrica/analytics/impl/Xa;->a()V

    :cond_0
    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/ig;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ng;->b:Lio/appmetrica/analytics/impl/ig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lio/appmetrica/analytics/impl/Xa;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ng;->c:Lio/appmetrica/analytics/impl/Xa;

    .line 2
    .line 3
    return-object v0
.end method
