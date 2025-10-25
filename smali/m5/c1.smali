.class final Lm5/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lk6/l;

.field final synthetic b:Lm5/e1;


# direct methods
.method constructor <init>(Lm5/e1;Lk6/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm5/c1;->b:Lm5/e1;

    iput-object p2, p0, Lm5/c1;->a:Lk6/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/c1;->b:Lm5/e1;

    .line 2
    .line 3
    iget-object v1, p0, Lm5/c1;->a:Lk6/l;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lm5/e1;->g1(Lm5/e1;Lk6/l;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
