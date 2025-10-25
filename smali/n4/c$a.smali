.class final Ln4/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final c:Ljava/util/Comparator;


# instance fields
.field public final a:Lm4/b;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln4/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ln4/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ln4/c$a;->c:Ljava/util/Comparator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lm4/b$b;

    .line 5
    .line 6
    invoke-direct {v0}, Lm4/b$b;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lm4/b$b;->o(Ljava/lang/CharSequence;)Lm4/b$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Lm4/b$b;->p(Landroid/text/Layout$Alignment;)Lm4/b$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p3, p4}, Lm4/b$b;->h(FI)Lm4/b$b;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p5}, Lm4/b$b;->i(I)Lm4/b$b;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p6}, Lm4/b$b;->k(F)Lm4/b$b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, p7}, Lm4/b$b;->l(I)Lm4/b$b;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, p8}, Lm4/b$b;->n(F)Lm4/b$b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p9, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1, p10}, Lm4/b$b;->s(I)Lm4/b$b;

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p1}, Lm4/b$b;->a()Lm4/b;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Ln4/c$a;->a:Lm4/b;

    .line 47
    .line 48
    iput p11, p0, Ln4/c$a;->b:I

    .line 49
    .line 50
    return-void
.end method

.method public static synthetic a(Ln4/c$a;Ln4/c$a;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ln4/c$a;->c(Ln4/c$a;Ln4/c$a;)I

    move-result p0

    return p0
.end method

.method static synthetic b()Ljava/util/Comparator;
    .locals 1

    .line 1
    sget-object v0, Ln4/c$a;->c:Ljava/util/Comparator;

    .line 2
    .line 3
    return-object v0
.end method

.method private static synthetic c(Ln4/c$a;Ln4/c$a;)I
    .locals 0

    .line 1
    iget p1, p1, Ln4/c$a;->b:I

    .line 2
    .line 3
    iget p0, p0, Ln4/c$a;->b:I

    .line 4
    .line 5
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
