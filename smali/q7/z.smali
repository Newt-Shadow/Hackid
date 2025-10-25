.class public final synthetic Lq7/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lq7/d0;


# direct methods
.method public synthetic constructor <init>(Lq7/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq7/z;->a:Lq7/d0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/z;->a:Lq7/d0;

    invoke-static {v0}, Lq7/d0;->d(Lq7/d0;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
