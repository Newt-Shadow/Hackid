.class public final synthetic Lio/appmetrica/analytics/impl/zo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/L1;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/N1;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/N1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/zo;->a:Lio/appmetrica/analytics/impl/N1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zo;->a:Lio/appmetrica/analytics/impl/N1;

    invoke-static {v0, p1}, Lio/appmetrica/analytics/impl/N1;->b(Lio/appmetrica/analytics/impl/N1;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
