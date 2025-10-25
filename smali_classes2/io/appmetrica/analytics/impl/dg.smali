.class public final Lio/appmetrica/analytics/impl/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/lg;

.field public final synthetic b:Lio/appmetrica/analytics/impl/eg;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/eg;Lio/appmetrica/analytics/impl/lg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/dg;->b:Lio/appmetrica/analytics/impl/eg;

    .line 2
    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/dg;->a:Lio/appmetrica/analytics/impl/lg;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dg;->b:Lio/appmetrica/analytics/impl/eg;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/eg;->a:Lio/appmetrica/analytics/impl/qg;

    .line 4
    .line 5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/dg;->a:Lio/appmetrica/analytics/impl/lg;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/lg;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
