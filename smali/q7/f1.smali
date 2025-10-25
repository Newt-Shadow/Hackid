.class public final synthetic Lq7/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lq7/h1;

.field public final synthetic b:Lt7/f0$e$d;

.field public final synthetic c:Ls7/c;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lq7/h1;Lt7/f0$e$d;Ls7/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq7/f1;->a:Lq7/h1;

    iput-object p2, p0, Lq7/f1;->b:Lt7/f0$e$d;

    iput-object p3, p0, Lq7/f1;->c:Ls7/c;

    iput-boolean p4, p0, Lq7/f1;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq7/f1;->a:Lq7/h1;

    iget-object v1, p0, Lq7/f1;->b:Lt7/f0$e$d;

    iget-object v2, p0, Lq7/f1;->c:Ls7/c;

    iget-boolean v3, p0, Lq7/f1;->d:Z

    invoke-static {v0, v1, v2, v3}, Lq7/h1;->b(Lq7/h1;Lt7/f0$e$d;Ls7/c;Z)V

    return-void
.end method
