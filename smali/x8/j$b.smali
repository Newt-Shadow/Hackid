.class final Lx8/j$b;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx8/j;->f(Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lx8/j;

.field d:I


# direct methods
.method constructor <init>(Lx8/j;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx8/j$b;->c:Lx8/j;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lad/e;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lx8/j$b;->b:Ljava/lang/Object;

    iget p1, p0, Lx8/j$b;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx8/j$b;->d:I

    iget-object p1, p0, Lx8/j$b;->c:Lx8/j;

    invoke-virtual {p1, p0}, Lx8/j;->f(Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
