.class final Lwd/m$b$a;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwd/m$b;->emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lwd/m$b;

.field e:I


# direct methods
.method constructor <init>(Lwd/m$b;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwd/m$b$a;->d:Lwd/m$b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lad/e;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lwd/m$b$a;->c:Ljava/lang/Object;

    iget p1, p0, Lwd/m$b$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lwd/m$b$a;->e:I

    iget-object p1, p0, Lwd/m$b$a;->d:Lwd/m$b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lwd/m$b;->emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
