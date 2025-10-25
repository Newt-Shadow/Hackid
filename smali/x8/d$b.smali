.class final Lx8/d$b;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx8/d;->b(Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lx8/d;

.field e:I


# direct methods
.method constructor <init>(Lx8/d;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx8/d$b;->d:Lx8/d;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lad/e;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lx8/d$b;->c:Ljava/lang/Object;

    iget p1, p0, Lx8/d$b;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx8/d$b;->e:I

    iget-object p1, p0, Lx8/d$b;->d:Lx8/d;

    invoke-virtual {p1, p0}, Lx8/d;->b(Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
