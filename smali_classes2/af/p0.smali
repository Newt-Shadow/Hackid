.class public final Laf/p0;
.super Lyc/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laf/p0$a;
    }
.end annotation


# static fields
.field public static final d:Laf/p0$a;


# instance fields
.field private final b:[Laf/g;

.field private final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Laf/p0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laf/p0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Laf/p0;->d:Laf/p0$a;

    return-void
.end method

.method private constructor <init>([Laf/g;[I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lyc/c;-><init>()V

    .line 3
    iput-object p1, p0, Laf/p0;->b:[Laf/g;

    .line 4
    iput-object p2, p0, Laf/p0;->c:[I

    return-void
.end method

.method public synthetic constructor <init>([Laf/g;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Laf/p0;-><init>([Laf/g;[I)V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Laf/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Laf/g;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Laf/p0;->m(Laf/g;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Laf/p0;->n(I)Laf/g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Laf/p0;->b:[Laf/g;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Laf/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Laf/g;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Laf/p0;->r(Laf/g;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Laf/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Laf/g;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Laf/p0;->s(Laf/g;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public bridge m(Laf/g;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lyc/b;->contains(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public n(I)Laf/g;
    .locals 1

    .line 1
    iget-object v0, p0, Laf/p0;->b:[Laf/g;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public final o()[Laf/g;
    .locals 1

    .line 1
    iget-object v0, p0, Laf/p0;->b:[Laf/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()[I
    .locals 1

    .line 1
    iget-object v0, p0, Laf/p0;->c:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge r(Laf/g;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lyc/c;->indexOf(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge s(Laf/g;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lyc/c;->lastIndexOf(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
