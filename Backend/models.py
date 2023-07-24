from pydantic import BaseModel, computed_field

class Enneagram(BaseModel):
    number: int
    name: str
    descriptors: list[str]
    fear: str
    desire: str
    levels: dict[int,str]

    @computed_field
    @property
    def url(self) -> str:
        return "https://www.enneagraminstitute.com/type-" + str(self.number)
    

