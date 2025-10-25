.class public Lio/appmetrica/analytics/impl/kn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Yn;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Yn;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Yn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Yn;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/kn;->a:Lio/appmetrica/analytics/impl/Yn;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/appmetrica/analytics/impl/Wn;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/kn;->a:Lio/appmetrica/analytics/impl/Yn;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Yn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    move-result-object p1

    .line 2
    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/Wn;->a:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lio/appmetrica/analytics/ValidationException;

    .line 4
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Wn;->b:Ljava/lang/String;

    .line 5
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Lio/appmetrica/analytics/impl/Yn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/Yn;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/kn;->a:Lio/appmetrica/analytics/impl/Yn;

    return-object v0
.end method
