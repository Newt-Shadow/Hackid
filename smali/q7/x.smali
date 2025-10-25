.class public final synthetic Lq7/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lq7/d0;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lq7/d0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq7/x;->a:Lq7/d0;

    iput-object p2, p0, Lq7/x;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/x;->a:Lq7/d0;

    iget-object v1, p0, Lq7/x;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lq7/d0;->h(Lq7/d0;Ljava/lang/String;)V

    return-void
.end method
