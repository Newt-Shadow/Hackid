.class public final synthetic Lio/appmetrica/analytics/impl/dp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/O;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/O;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/dp;->a:Lio/appmetrica/analytics/impl/O;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dp;->a:Lio/appmetrica/analytics/impl/O;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/O;->e(Lio/appmetrica/analytics/impl/O;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
