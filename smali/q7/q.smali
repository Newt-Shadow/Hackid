.class public final synthetic Lq7/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lq7/r;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lq7/r;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq7/q;->a:Lq7/r;

    iput-object p2, p0, Lq7/q;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/q;->a:Lq7/r;

    iget-object v1, p0, Lq7/q;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lq7/r;->b(Lq7/r;Ljava/lang/String;)V

    return-void
.end method
