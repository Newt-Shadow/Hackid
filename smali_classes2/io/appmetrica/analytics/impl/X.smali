.class public final Lio/appmetrica/analytics/impl/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/in;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Y;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/X;->a:Lio/appmetrica/analytics/impl/Y;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Thread;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/X;->a:Lio/appmetrica/analytics/impl/Y;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Y;->b:Ljava/lang/Thread;

    .line 4
    .line 5
    return-object v0
.end method

.method public final b()[Ljava/lang/StackTraceElement;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/X;->a:Lio/appmetrica/analytics/impl/Y;

    .line 2
    .line 3
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Y;->a:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Y;->b:Ljava/lang/Thread;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 12
    .line 13
    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/X;->a:Lio/appmetrica/analytics/impl/Y;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Y;->a:Ljava/util/Map;

    .line 4
    .line 5
    return-object v0
.end method
