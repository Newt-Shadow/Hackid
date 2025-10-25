.class public final synthetic Li4/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Li4/p;


# direct methods
.method public synthetic constructor <init>(Li4/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li4/n;->a:Li4/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/n;->a:Li4/p;

    invoke-static {v0}, Li4/p;->v(Li4/p;)V

    return-void
.end method
