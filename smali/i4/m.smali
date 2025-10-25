.class public final synthetic Li4/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Li4/p$b;


# direct methods
.method public synthetic constructor <init>(Li4/p$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li4/m;->a:Li4/p$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/m;->a:Li4/p$b;

    invoke-interface {v0}, Li4/p$b;->a()V

    return-void
.end method
