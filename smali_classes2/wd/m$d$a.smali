.class public final Lwd/m$d$a;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwd/m$d;->emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lwd/m$d;

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lwd/m$d;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwd/m$d$a;->d:Lwd/m$d;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lad/e;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lwd/m$d$a;->b:Ljava/lang/Object;

    iget p1, p0, Lwd/m$d$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lwd/m$d$a;->c:I

    iget-object p1, p0, Lwd/m$d$a;->d:Lwd/m$d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lwd/m$d;->emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
