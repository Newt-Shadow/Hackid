.class final Lm5/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lm5/e1;


# direct methods
.method constructor <init>(Lm5/e1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm5/b1;->a:Lm5/e1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm5/b1;->a:Lm5/e1;

    .line 2
    .line 3
    invoke-static {v0}, Lm5/e1;->f1(Lm5/e1;)Lm5/d1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ll5/b;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-direct {v1, v2}, Ll5/b;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lm5/d1;->a(Ll5/b;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
