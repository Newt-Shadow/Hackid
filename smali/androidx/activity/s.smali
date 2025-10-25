.class public final synthetic Landroidx/activity/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/activity/t;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/s;->a:Landroidx/activity/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/s;->a:Landroidx/activity/t;

    invoke-static {v0}, Landroidx/activity/t;->a(Landroidx/activity/t;)V

    return-void
.end method
