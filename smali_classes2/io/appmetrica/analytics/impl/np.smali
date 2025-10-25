.class public final synthetic Lio/appmetrica/analytics/impl/np;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/dc;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/dc;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/np;->a:Lio/appmetrica/analytics/impl/dc;

    iput-boolean p2, p0, Lio/appmetrica/analytics/impl/np;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/np;->a:Lio/appmetrica/analytics/impl/dc;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/np;->b:Z

    invoke-static {v0, v1}, Lio/appmetrica/analytics/impl/dc;->a(Lio/appmetrica/analytics/impl/dc;Z)V

    return-void
.end method
