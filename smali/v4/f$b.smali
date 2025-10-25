.class Lv4/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv4/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final c:Ljava/util/Comparator;


# instance fields
.field private final a:Lv4/f$c;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv4/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lv4/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv4/f$b;->c:Ljava/util/Comparator;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Lv4/f$c;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lv4/f$b;->a:Lv4/f$c;

    .line 4
    iput p2, p0, Lv4/f$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lv4/f$c;ILv4/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lv4/f$b;-><init>(Lv4/f$c;I)V

    return-void
.end method

.method public static synthetic a(Lv4/f$b;Lv4/f$b;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lv4/f$b;->e(Lv4/f$b;Lv4/f$b;)I

    move-result p0

    return p0
.end method

.method static synthetic b()Ljava/util/Comparator;
    .locals 1

    .line 1
    sget-object v0, Lv4/f$b;->c:Ljava/util/Comparator;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c(Lv4/f$b;)Lv4/f$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lv4/f$b;->a:Lv4/f$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lv4/f$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lv4/f$b;->b:I

    .line 2
    .line 3
    return p0
.end method

.method private static synthetic e(Lv4/f$b;Lv4/f$b;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lv4/f$b;->a:Lv4/f$c;

    .line 2
    .line 3
    iget p0, p0, Lv4/f$c;->b:I

    .line 4
    .line 5
    iget-object p1, p1, Lv4/f$b;->a:Lv4/f$c;

    .line 6
    .line 7
    iget p1, p1, Lv4/f$c;->b:I

    .line 8
    .line 9
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
