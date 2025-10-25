.class public final synthetic Landroidx/activity/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/activity/j$f;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/j$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/k;->a:Landroidx/activity/j$f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/k;->a:Landroidx/activity/j$f;

    invoke-static {v0}, Landroidx/activity/j$f;->a(Landroidx/activity/j$f;)V

    return-void
.end method
