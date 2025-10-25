.class public final synthetic Landroidx/fragment/app/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/p;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/p;

    invoke-static {v0}, Landroidx/fragment/app/p;->d(Landroidx/fragment/app/p;)V

    return-void
.end method
