.class public final Lxc/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lxc/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lxc/t;

    invoke-direct {v0}, Lxc/t;-><init>()V

    sput-object v0, Lxc/t;->a:Lxc/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "kotlin.Unit"

    return-object v0
.end method
