.class public final synthetic Lf3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf3/h$f;

.field public final synthetic b:Lb3/x1;


# direct methods
.method public synthetic constructor <init>(Lf3/h$f;Lb3/x1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/j;->a:Lf3/h$f;

    iput-object p2, p0, Lf3/j;->b:Lb3/x1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf3/j;->a:Lf3/h$f;

    iget-object v1, p0, Lf3/j;->b:Lb3/x1;

    invoke-static {v0, v1}, Lf3/h$f;->d(Lf3/h$f;Lb3/x1;)V

    return-void
.end method
