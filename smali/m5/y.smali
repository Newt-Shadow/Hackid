.class final Lm5/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/f;


# instance fields
.field final synthetic a:Lm6/l;

.field final synthetic b:Lm5/z;


# direct methods
.method constructor <init>(Lm5/z;Lm6/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm5/y;->b:Lm5/z;

    iput-object p2, p0, Lm5/y;->a:Lm6/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lm6/Task;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lm5/y;->b:Lm5/z;

    .line 2
    .line 3
    invoke-static {p1}, Lm5/z;->b(Lm5/z;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lm5/y;->a:Lm6/l;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method
