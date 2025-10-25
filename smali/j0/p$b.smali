.class final Lj0/p$b;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/p;->a(Lid/Function2;Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field synthetic e:Ljava/lang/Object;

.field final synthetic f:Lj0/p;

.field g:I


# direct methods
.method constructor <init>(Lj0/p;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/p$b;->f:Lj0/p;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lad/e;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lj0/p$b;->e:Ljava/lang/Object;

    iget p1, p0, Lj0/p$b;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lj0/p$b;->g:I

    iget-object p1, p0, Lj0/p$b;->f:Lj0/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lj0/p;->a(Lid/Function2;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
