.class final Ln9/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Ln9/e$b;


# direct methods
.method private constructor <init>(ILn9/e$b;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Ln9/e$c;->a:I

    .line 5
    filled-new-array {p2}, [Ln9/e$b;

    move-result-object p1

    iput-object p1, p0, Ln9/e$c;->b:[Ln9/e$b;

    return-void
.end method

.method synthetic constructor <init>(ILn9/e$b;Ln9/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln9/e$c;-><init>(ILn9/e$b;)V

    return-void
.end method

.method private constructor <init>(ILn9/e$b;Ln9/e$b;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Ln9/e$c;->a:I

    .line 8
    filled-new-array {p2, p3}, [Ln9/e$b;

    move-result-object p1

    iput-object p1, p0, Ln9/e$c;->b:[Ln9/e$b;

    return-void
.end method

.method synthetic constructor <init>(ILn9/e$b;Ln9/e$b;Ln9/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Ln9/e$c;-><init>(ILn9/e$b;Ln9/e$b;)V

    return-void
.end method


# virtual methods
.method a()[Ln9/e$b;
    .locals 1

    .line 1
    iget-object v0, p0, Ln9/e$c;->b:[Ln9/e$b;

    .line 2
    .line 3
    return-object v0
.end method

.method b()I
    .locals 1

    .line 1
    iget v0, p0, Ln9/e$c;->a:I

    .line 2
    .line 3
    return v0
.end method
