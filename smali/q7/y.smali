.class public final synthetic Lq7/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lq7/d0;

.field public final synthetic b:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lq7/d0;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq7/y;->a:Lq7/d0;

    iput-object p2, p0, Lq7/y;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/y;->a:Lq7/d0;

    iget-object v1, p0, Lq7/y;->b:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lq7/d0;->b(Lq7/d0;Ljava/lang/Throwable;)V

    return-void
.end method
