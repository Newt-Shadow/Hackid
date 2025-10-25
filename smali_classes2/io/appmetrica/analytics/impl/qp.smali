.class public final synthetic Lio/appmetrica/analytics/impl/qp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/f2;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/f2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/qp;->a:Lio/appmetrica/analytics/impl/f2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/qp;->a:Lio/appmetrica/analytics/impl/f2;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/f2;->a(Lio/appmetrica/analytics/impl/f2;)V

    return-void
.end method
