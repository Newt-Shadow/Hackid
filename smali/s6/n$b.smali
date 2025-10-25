.class public final Ls6/n$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls6/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ls6/g;

.field private final b:Ls6/k;

.field private final c:I

.field private final d:Z


# direct methods
.method private constructor <init>(Ls6/g;Ls6/k;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ls6/n$b;->a:Ls6/g;

    .line 4
    iput-object p2, p0, Ls6/n$b;->b:Ls6/k;

    .line 5
    iput p3, p0, Ls6/n$b;->c:I

    .line 6
    iput-boolean p4, p0, Ls6/n$b;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Ls6/g;Ls6/k;IZLs6/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ls6/n$b;-><init>(Ls6/g;Ls6/k;IZ)V

    return-void
.end method


# virtual methods
.method public a()Ls6/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/n$b;->a:Ls6/g;

    .line 2
    .line 3
    return-object v0
.end method
