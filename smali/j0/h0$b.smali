.class final Lj0/h0$b;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/h0;->b(Lid/Function2;Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Z

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lj0/h0;

.field e:I


# direct methods
.method constructor <init>(Lj0/h0;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/h0$b;->d:Lj0/h0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lad/e;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lj0/h0$b;->c:Ljava/lang/Object;

    iget p1, p0, Lj0/h0$b;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lj0/h0$b;->e:I

    iget-object p1, p0, Lj0/h0$b;->d:Lj0/h0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lj0/h0;->b(Lid/Function2;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
